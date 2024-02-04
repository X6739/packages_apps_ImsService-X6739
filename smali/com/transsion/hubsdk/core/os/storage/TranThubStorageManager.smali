.class public Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;
.super Ljava/lang/Object;
.source "TranThubStorageManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/storage/ITranStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "storage_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/storage/ITranStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/storage/ITranStorageManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;->mService:Lcom/transsion/hubsdk/os/storage/ITranStorageManager;

    .line 35
    return-void
.end method


# virtual methods
.method public getVolumes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;->mService:Lcom/transsion/hubsdk/os/storage/ITranStorageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    return-object v1

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 43
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;>;"
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/os/storage/ITranStorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolumes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v2, :cond_1

    .line 48
    return-object v1

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "tranVolumes":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;

    .line 52
    .local v3, "vol":Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;
    new-instance v4, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v4, "tranVol":Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDescription(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setState(I)V

    .line 55
    invoke-virtual {v3}, Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;->getDisk()Lcom/transsion/hubsdk/os/storage/TranDiskInfo;

    move-result-object v5

    .line 56
    .local v5, "diskInfo":Lcom/transsion/hubsdk/os/storage/TranDiskInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diskInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranStorageManager"

    invoke-static {v7, v6}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v5, :cond_2

    .line 58
    new-instance v6, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    iget-object v7, v5, Lcom/transsion/hubsdk/os/storage/TranDiskInfo;->id:Ljava/lang/String;

    iget v8, v5, Lcom/transsion/hubsdk/os/storage/TranDiskInfo;->flags:I

    invoke-direct {v6, v7, v8}, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;-><init>(Ljava/lang/String;I)V

    .line 59
    .local v6, "tranDiskInfo":Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
    invoke-virtual {v4, v6}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDiskInfo(Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;)V

    .line 61
    .end local v6    # "tranDiskInfo":Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "vol":Lcom/transsion/hubsdk/os/storage/TranVolumeInfo;
    .end local v4    # "tranVol":Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    .end local v5    # "diskInfo":Lcom/transsion/hubsdk/os/storage/TranDiskInfo;
    goto :goto_1

    .line 63
    :cond_3
    return-object v0
.end method

.method protected setService(Lcom/transsion/hubsdk/os/storage/ITranStorageManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/os/storage/ITranStorageManager;

    .line 72
    sput-object p1, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;->mService:Lcom/transsion/hubsdk/os/storage/ITranStorageManager;

    .line 73
    return-void
.end method
