.class Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;
.super Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;
.source "TranThubTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTidChange()V
    .locals 3

    .line 31
    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;

    .line 32
    .local v1, "info":Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;->onTidChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 36
    .end local v1    # "info":Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    goto :goto_2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api call back error!!!"

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/util/TranLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
