.class public Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;
.super Ljava/lang/Object;
.source "TranThubAccessibilityServiceInfoManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "accessibility_service_info"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    .line 40
    return-void
.end method


# virtual methods
.method public getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 5
    .param p1, "installedService"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "isCrashed":Z
    sget-object v1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    if-nez v1, :cond_0

    .line 46
    const/4 v1, 0x0

    return v1

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;->getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCrashed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method protected setService(Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    .line 62
    sput-object p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;->mService:Lcom/transsion/hubsdk/accessibilityservice/ITranAccessibilityServiceInfoManager;

    .line 63
    return-void
.end method
