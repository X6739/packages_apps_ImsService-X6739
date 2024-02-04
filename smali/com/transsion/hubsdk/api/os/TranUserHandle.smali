.class public Lcom/transsion/hubsdk/api/os/TranUserHandle;
.super Ljava/lang/Object;
.source "TranUserHandle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 42
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/transsion/hubsdk/os/TranUserHandle;->getUserId(I)I

    move-result v0

    return v0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static myUserId()I
    .locals 1

    .line 29
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    return v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->myUserId()I

    move-result v0

    return v0
.end method
