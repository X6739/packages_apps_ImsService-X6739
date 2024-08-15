.class public Lcom/transsion/hubsdk/api/os/TranUserHandleManager;
.super Ljava/lang/Object;
.source "TranUserHandleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubUserHandleManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospUserHandleManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method public getIdentifier()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;->getIdentifier()I

    move-result v0

    return v0
.end method
