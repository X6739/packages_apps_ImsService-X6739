.class public Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;
.super Ljava/lang/Object;
.source "TranStatusBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mService:Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mService:Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospStatusBarManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public disable(I)V
    .locals 1
    .param p1, "what"    # I

    .line 52
    iget-object v0, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mService:Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->disable(I)V

    .line 53
    return-void
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mService:Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    return-object v0
.end method
