.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;
.super Lcom/transsion/hubsdk/appm/ITranAppmCallback$Stub;
.source "TranThubAppmCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppmCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/hubsdk/appm/ITranAppmCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    .line 53
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;->onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 61
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-void
.end method
