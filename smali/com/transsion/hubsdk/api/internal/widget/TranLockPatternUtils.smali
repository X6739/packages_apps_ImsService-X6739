.class public Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;
.super Ljava/lang/Object;
.source "TranLockPatternUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternUtils;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->TAG:Ljava/lang/String;

    const-string v1, "TranAospStatusBarManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 46
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    return-object v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 59
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/widget/TranLockPatternUtils;->mService:Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;->isSecure(I)Z

    move-result v0

    return v0
.end method
