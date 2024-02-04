.class public Lcom/transsion/hubsdk/api/app/TranActivityManager;
.super Ljava/lang/Object;
.source "TranActivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubActivityManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospActivityManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->forceStopPackage(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    return-object v0
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public inMultiWindowMode(I)Z
    .locals 1
    .param p1, "windowingMode"    # I

    .line 127
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->inMultiWindowMode(I)Z

    move-result v0

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->isInLockTaskMode()Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    .line 138
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    .line 139
    return-void
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # J
    .param p4, "pid"    # I
    .param p5, "externinfo"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "tran startTNE"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/transsion/hubsdk/api/app/TranActivityManager;->mService:Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method
