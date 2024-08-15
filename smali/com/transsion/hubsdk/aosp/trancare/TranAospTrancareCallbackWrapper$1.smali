.class Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;
.super Lcom/transsion/log/TranLogCallback;
.source "TranAospTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->regCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/transsion/log/TranLogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTidChange()V
    .locals 3

    .line 34
    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    .line 35
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranLogCallback()Lcom/transsion/log/TranLogCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;->onTidChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 39
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 42
    :goto_2
    return-void
.end method
