.class public Lcom/transsion/hubsdk/api/os/TranServiceManager;
.super Ljava/lang/Object;
.source "TranServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/TranThubServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubServiceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospServiceManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public listServices()[Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranServiceManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranServiceManagerAdapter;->listServices()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
