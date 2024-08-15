.class public Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;
.super Ljava/lang/Object;
.source "TranAospStorageManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDiskClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sVolumeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMethodName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "android.os.storage.StorageManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    .line 25
    const-string v0, "android.os.storage.VolumeInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    .line 26
    const-string v0, "android.os.storage.DiskInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 31
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getVolumes()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 36
    move-object/from16 v1, p0

    const-string v0, "getId"

    iget-object v2, v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 37
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "getVolumes"

    invoke-static {v2, v5, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 39
    :cond_0
    iget-object v2, v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 40
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, "mVolumeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;>;"
    const/4 v5, 0x0

    .line 43
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    iget-object v7, v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    iget-object v7, v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 45
    .local v7, "obj":Ljava/lang/Object;
    if-eqz v7, :cond_1

    :try_start_1
    instance-of v9, v7, Ljava/util/List;

    if-eqz v9, :cond_1

    .line 46
    move-object v9, v7

    check-cast v9, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v9

    goto :goto_0

    .line 123
    .end local v7    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_c

    .line 48
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    new-array v10, v3, [Ljava/lang/Class;

    invoke-static {v9, v0, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 49
    .local v9, "methodId":Ljava/lang/reflect/Method;
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v11, "getType"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-static {v10, v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 50
    .local v10, "methodType":Ljava/lang/reflect/Method;
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v12, "getState"

    new-array v13, v3, [Ljava/lang/Class;

    invoke-static {v11, v12, v13}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 51
    .local v11, "methodState":Ljava/lang/reflect/Method;
    sget-object v12, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v13, "getFsUuid"

    new-array v14, v3, [Ljava/lang/Class;

    invoke-static {v12, v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 52
    .local v12, "methodUuid":Ljava/lang/reflect/Method;
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v14, "getPath"

    new-array v15, v3, [Ljava/lang/Class;

    invoke-static {v13, v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 53
    .local v13, "methodPath":Ljava/lang/reflect/Method;
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v15, "getDescription"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-static {v14, v15, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 54
    .local v6, "methodDescription":Ljava/lang/reflect/Method;
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v15, "getDisk"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-static {v14, v15, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 55
    .local v8, "methodDisk":Ljava/lang/reflect/Method;
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    new-array v15, v3, [Ljava/lang/Class;

    invoke-static {v14, v0, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    .local v0, "methodDiskId":Ljava/lang/reflect/Method;
    sget-object v14, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    const-string v15, "flags"

    invoke-static {v14, v15}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 57
    .local v14, "fieldDiskFlag":Ljava/lang/reflect/Field;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    .line 58
    .local v18, "object":Ljava/lang/Object;
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    move-object/from16 v1, v18

    .end local v18    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    sget-object v3, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v18, v2

    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .local v18, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v19, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_4
    const-string v5, "tranVolumeInfo object :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    .end local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .end local v1    # "object":Ljava/lang/Object;
    .end local v6    # "methodDescription":Ljava/lang/reflect/Method;
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "methodDisk":Ljava/lang/reflect/Method;
    .end local v9    # "methodId":Ljava/lang/reflect/Method;
    .end local v10    # "methodType":Ljava/lang/reflect/Method;
    .end local v11    # "methodState":Ljava/lang/reflect/Method;
    .end local v12    # "methodUuid":Ljava/lang/reflect/Method;
    .end local v13    # "methodPath":Ljava/lang/reflect/Method;
    .end local v14    # "fieldDiskFlag":Ljava/lang/reflect/Field;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto/16 :goto_c

    .line 58
    .end local v18    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v6    # "methodDescription":Ljava/lang/reflect/Method;
    .restart local v7    # "obj":Ljava/lang/Object;
    .restart local v8    # "methodDisk":Ljava/lang/reflect/Method;
    .restart local v9    # "methodId":Ljava/lang/reflect/Method;
    .restart local v10    # "methodType":Ljava/lang/reflect/Method;
    .restart local v11    # "methodState":Ljava/lang/reflect/Method;
    .restart local v12    # "methodUuid":Ljava/lang/reflect/Method;
    .restart local v13    # "methodPath":Ljava/lang/reflect/Method;
    .restart local v14    # "fieldDiskFlag":Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    .line 61
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v18    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    .local v2, "objId":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 64
    .local v3, "id":Ljava/lang/String;
    if-eqz v2, :cond_3

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 65
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 67
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    move-object/from16 v20, v2

    const/4 v5, 0x0

    .end local v2    # "objId":Ljava/lang/Object;
    .local v20, "objId":Ljava/lang/Object;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v10, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "objType":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 70
    .local v5, "type":I
    if-eqz v2, :cond_4

    move/from16 v21, v5

    .end local v5    # "type":I
    .local v21, "type":I
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 71
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .end local v21    # "type":I
    .restart local v5    # "type":I
    goto :goto_3

    .line 70
    :cond_4
    move/from16 v21, v5

    .line 73
    .end local v5    # "type":I
    .restart local v21    # "type":I
    :cond_5
    move/from16 v5, v21

    .end local v21    # "type":I
    .restart local v5    # "type":I
    :goto_3
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "objType":Ljava/lang/Object;
    .local v21, "objType":Ljava/lang/Object;
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    move-object/from16 v22, v7

    const/4 v2, 0x0

    .end local v7    # "obj":Ljava/lang/Object;
    .local v22, "obj":Ljava/lang/Object;
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, "objState":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 76
    .local v7, "state":I
    if-eqz v2, :cond_6

    move/from16 v23, v7

    .end local v7    # "state":I
    .local v23, "state":I
    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_7

    .line 77
    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .end local v23    # "state":I
    .restart local v7    # "state":I
    goto :goto_4

    .line 76
    :cond_6
    move/from16 v23, v7

    .line 79
    .end local v7    # "state":I
    .restart local v23    # "state":I
    :cond_7
    move/from16 v7, v23

    .end local v23    # "state":I
    .restart local v7    # "state":I
    :goto_4
    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "objState":Ljava/lang/Object;
    .local v23, "objState":Ljava/lang/Object;
    invoke-virtual {v12, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    move-object/from16 v24, v9

    const/4 v2, 0x0

    .end local v9    # "methodId":Ljava/lang/reflect/Method;
    .local v24, "methodId":Ljava/lang/reflect/Method;
    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v12, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "objUuid":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 82
    .local v9, "uuid":Ljava/lang/String;
    if-eqz v2, :cond_8

    move-object/from16 v25, v9

    .end local v9    # "uuid":Ljava/lang/String;
    .local v25, "uuid":Ljava/lang/String;
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 83
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .end local v25    # "uuid":Ljava/lang/String;
    .restart local v9    # "uuid":Ljava/lang/String;
    goto :goto_5

    .line 82
    :cond_8
    move-object/from16 v25, v9

    .line 85
    .end local v9    # "uuid":Ljava/lang/String;
    .restart local v25    # "uuid":Ljava/lang/String;
    :cond_9
    move-object/from16 v9, v25

    .end local v25    # "uuid":Ljava/lang/String;
    .restart local v9    # "uuid":Ljava/lang/String;
    :goto_5
    move-object/from16 v25, v2

    const/4 v2, 0x1

    .end local v2    # "objUuid":Ljava/lang/Object;
    .local v25, "objUuid":Ljava/lang/Object;
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    move-object/from16 v26, v10

    const/4 v2, 0x0

    .end local v10    # "methodType":Ljava/lang/reflect/Method;
    .local v26, "methodType":Ljava/lang/reflect/Method;
    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v13, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "objPath":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 88
    .local v10, "path":Ljava/io/File;
    if-eqz v2, :cond_a

    move-object/from16 v27, v10

    .end local v10    # "path":Ljava/io/File;
    .local v27, "path":Ljava/io/File;
    instance-of v10, v2, Ljava/io/File;

    if-eqz v10, :cond_b

    .line 89
    move-object v10, v2

    check-cast v10, Ljava/io/File;

    .end local v27    # "path":Ljava/io/File;
    .restart local v10    # "path":Ljava/io/File;
    goto :goto_6

    .line 88
    :cond_a
    move-object/from16 v27, v10

    .line 91
    .end local v10    # "path":Ljava/io/File;
    .restart local v27    # "path":Ljava/io/File;
    :cond_b
    move-object/from16 v10, v27

    .end local v27    # "path":Ljava/io/File;
    .restart local v10    # "path":Ljava/io/File;
    :goto_6
    move-object/from16 v27, v2

    const/4 v2, 0x1

    .end local v2    # "objPath":Ljava/lang/Object;
    .local v27, "objPath":Ljava/lang/Object;
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    move-object/from16 v28, v11

    const/4 v2, 0x0

    .end local v11    # "methodState":Ljava/lang/reflect/Method;
    .local v28, "methodState":Ljava/lang/reflect/Method;
    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "objDescription":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 94
    .local v11, "description":Ljava/lang/String;
    if-eqz v2, :cond_c

    move-object/from16 v29, v6

    .end local v6    # "methodDescription":Ljava/lang/reflect/Method;
    .local v29, "methodDescription":Ljava/lang/reflect/Method;
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 95
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object v11, v6

    goto :goto_7

    .line 94
    .end local v29    # "methodDescription":Ljava/lang/reflect/Method;
    .restart local v6    # "methodDescription":Ljava/lang/reflect/Method;
    :cond_c
    move-object/from16 v29, v6

    .line 97
    .end local v6    # "methodDescription":Ljava/lang/reflect/Method;
    .restart local v29    # "methodDescription":Ljava/lang/reflect/Method;
    :cond_d
    :goto_7
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    move-object/from16 v30, v2

    const/4 v6, 0x0

    .end local v2    # "objDescription":Ljava/lang/Object;
    .local v30, "objDescription":Ljava/lang/Object;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "objDisk":Ljava/lang/Object;
    new-instance v6, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v37, v31

    move-object/from16 v31, v1

    move-object/from16 v1, v37

    goto :goto_8

    :cond_e
    move-object/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "object":Ljava/lang/Object;
    .local v31, "object":Ljava/lang/Object;
    :goto_8
    invoke-direct {v6, v3, v5, v9, v1}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 100
    .local v1, "tranVolumeInfo":Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    invoke-virtual {v1, v7}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setState(I)V

    .line 101
    invoke-virtual {v1, v11}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDescription(Ljava/lang/String;)V

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, "tranDiskInfo":Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
    const/16 v32, 0x0

    .line 104
    .local v32, "diskId":Ljava/lang/String;
    const/16 v33, 0x0

    .line 105
    .local v33, "diskflag":I
    if-eqz v2, :cond_12

    .line 106
    move-object/from16 v34, v3

    const/4 v3, 0x1

    .end local v3    # "id":Ljava/lang/String;
    .local v34, "id":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    move/from16 v17, v5

    const/4 v3, 0x0

    .end local v5    # "type":I
    .local v17, "type":I
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 108
    .local v5, "objDiskId":Ljava/lang/Object;
    if-eqz v5, :cond_f

    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 109
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .end local v32    # "diskId":Ljava/lang/String;
    .local v3, "diskId":Ljava/lang/String;
    goto :goto_9

    .line 111
    .end local v3    # "diskId":Ljava/lang/String;
    .restart local v32    # "diskId":Ljava/lang/String;
    :cond_f
    move-object/from16 v3, v32

    .end local v32    # "diskId":Ljava/lang/String;
    .restart local v3    # "diskId":Ljava/lang/String;
    :goto_9
    move-object/from16 v35, v0

    const/4 v0, 0x1

    .end local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .local v35, "methodDiskId":Ljava/lang/reflect/Method;
    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v14, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v32, v16

    .line 113
    .local v32, "objDiskFlag":Ljava/lang/Object;
    move-object/from16 v0, v32

    .end local v32    # "objDiskFlag":Ljava/lang/Object;
    .local v0, "objDiskFlag":Ljava/lang/Object;
    if-eqz v0, :cond_10

    move-object/from16 v36, v2

    .end local v2    # "objDisk":Ljava/lang/Object;
    .local v36, "objDisk":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 114
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .end local v33    # "diskflag":I
    .local v2, "diskflag":I
    goto :goto_a

    .line 113
    .end local v36    # "objDisk":Ljava/lang/Object;
    .local v2, "objDisk":Ljava/lang/Object;
    .restart local v33    # "diskflag":I
    :cond_10
    move-object/from16 v36, v2

    .line 116
    .end local v2    # "objDisk":Ljava/lang/Object;
    .restart local v36    # "objDisk":Ljava/lang/Object;
    :cond_11
    move/from16 v2, v33

    .end local v33    # "diskflag":I
    .local v2, "diskflag":I
    :goto_a
    move-object/from16 v32, v0

    .end local v0    # "objDiskFlag":Ljava/lang/Object;
    .restart local v32    # "objDiskFlag":Ljava/lang/Object;
    new-instance v0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    invoke-direct {v0, v3, v2}, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;-><init>(Ljava/lang/String;I)V

    move-object v6, v0

    move/from16 v33, v2

    move-object/from16 v32, v3

    goto :goto_b

    .line 105
    .end local v17    # "type":I
    .end local v34    # "id":Ljava/lang/String;
    .end local v35    # "methodDiskId":Ljava/lang/reflect/Method;
    .end local v36    # "objDisk":Ljava/lang/Object;
    .local v0, "methodDiskId":Ljava/lang/reflect/Method;
    .local v2, "objDisk":Ljava/lang/Object;
    .local v3, "id":Ljava/lang/String;
    .local v5, "type":I
    .local v32, "diskId":Ljava/lang/String;
    .restart local v33    # "diskflag":I
    :cond_12
    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v34, v3

    move/from16 v17, v5

    .line 118
    .end local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .end local v2    # "objDisk":Ljava/lang/Object;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v17    # "type":I
    .restart local v34    # "id":Ljava/lang/String;
    .restart local v35    # "methodDiskId":Ljava/lang/reflect/Method;
    .restart local v36    # "objDisk":Ljava/lang/Object;
    :goto_b
    invoke-virtual {v1, v6}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDiskInfo(Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;)V

    .line 119
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v6, v29

    move-object/from16 v0, v35

    const/4 v3, 0x0

    .end local v1    # "tranVolumeInfo":Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    .end local v6    # "tranDiskInfo":Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
    .end local v7    # "state":I
    .end local v9    # "uuid":Ljava/lang/String;
    .end local v10    # "path":Ljava/io/File;
    .end local v11    # "description":Ljava/lang/String;
    .end local v17    # "type":I
    .end local v20    # "objId":Ljava/lang/Object;
    .end local v21    # "objType":Ljava/lang/Object;
    .end local v23    # "objState":Ljava/lang/Object;
    .end local v25    # "objUuid":Ljava/lang/Object;
    .end local v27    # "objPath":Ljava/lang/Object;
    .end local v30    # "objDescription":Ljava/lang/Object;
    .end local v31    # "object":Ljava/lang/Object;
    .end local v32    # "diskId":Ljava/lang/String;
    .end local v33    # "diskflag":I
    .end local v34    # "id":Ljava/lang/String;
    .end local v36    # "objDisk":Ljava/lang/Object;
    goto/16 :goto_1

    .line 123
    .end local v8    # "methodDisk":Ljava/lang/reflect/Method;
    .end local v12    # "methodUuid":Ljava/lang/reflect/Method;
    .end local v13    # "methodPath":Ljava/lang/reflect/Method;
    .end local v14    # "fieldDiskFlag":Ljava/lang/reflect/Field;
    .end local v22    # "obj":Ljava/lang/Object;
    .end local v24    # "methodId":Ljava/lang/reflect/Method;
    .end local v26    # "methodType":Ljava/lang/reflect/Method;
    .end local v28    # "methodState":Ljava/lang/reflect/Method;
    .end local v29    # "methodDescription":Ljava/lang/reflect/Method;
    .end local v35    # "methodDiskId":Ljava/lang/reflect/Method;
    :catchall_2
    move-exception v0

    move-object/from16 v5, v19

    goto :goto_c

    .line 122
    .end local v18    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v6, "methodDescription":Ljava/lang/reflect/Method;
    .local v7, "obj":Ljava/lang/Object;
    .restart local v8    # "methodDisk":Ljava/lang/reflect/Method;
    .local v9, "methodId":Ljava/lang/reflect/Method;
    .local v10, "methodType":Ljava/lang/reflect/Method;
    .local v11, "methodState":Ljava/lang/reflect/Method;
    .restart local v12    # "methodUuid":Ljava/lang/reflect/Method;
    .restart local v13    # "methodPath":Ljava/lang/reflect/Method;
    .restart local v14    # "fieldDiskFlag":Ljava/lang/reflect/Field;
    :cond_13
    return-object v4

    .line 123
    .end local v0    # "methodDiskId":Ljava/lang/reflect/Method;
    .end local v6    # "methodDescription":Ljava/lang/reflect/Method;
    .end local v7    # "obj":Ljava/lang/Object;
    .end local v8    # "methodDisk":Ljava/lang/reflect/Method;
    .end local v9    # "methodId":Ljava/lang/reflect/Method;
    .end local v10    # "methodType":Ljava/lang/reflect/Method;
    .end local v11    # "methodState":Ljava/lang/reflect/Method;
    .end local v12    # "methodUuid":Ljava/lang/reflect/Method;
    .end local v13    # "methodPath":Ljava/lang/reflect/Method;
    .end local v14    # "fieldDiskFlag":Ljava/lang/reflect/Field;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v18    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_c

    .end local v18    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v18, v2

    .line 124
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v18    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_c
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method
