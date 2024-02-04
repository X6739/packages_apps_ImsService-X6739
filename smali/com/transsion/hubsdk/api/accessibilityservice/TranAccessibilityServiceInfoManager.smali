.class public Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;
.super Ljava/lang/Object;
.source "TranAccessibilityServiceInfoManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAccessibilityServiceInfoManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method public getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2
    .param p1, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "isCrashed":Z
    iget-object v1, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;->getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    .line 61
    :cond_0
    return v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    return-object v0
.end method
