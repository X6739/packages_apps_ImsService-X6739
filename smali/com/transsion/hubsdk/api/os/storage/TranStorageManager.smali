.class public Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;
.super Ljava/lang/Object;
.source "TranStorageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mService:Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubStorageManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mService:Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospStorageManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;
    .locals 1

    .line 62
    sget-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mService:Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    return-object v0
.end method

.method public getVolumes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mService:Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "tranVolumeInfo":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;>;"
    sget-object v1, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tranVolumeInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v0
.end method
