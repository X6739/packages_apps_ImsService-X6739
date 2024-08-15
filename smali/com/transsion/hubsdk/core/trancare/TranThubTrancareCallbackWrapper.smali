.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;
.super Ljava/lang/Object;
.source "TranThubTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 24
    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;)V

    .line 25
    .local v0, "callbackInfo":Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->setApiCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 27
    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$1;-><init>()V

    .line 42
    .local v1, "trancareCallback":Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->setCallback(Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;)V

    .line 43
    sget-object v2, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->regTranLogCallback(Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;)V

    .line 46
    return-void
.end method

.method public static unRegTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 49
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;

    .line 50
    .local v1, "info":Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getApiCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;->getCallback()Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->unregTranLogCallback(Lcom/transsion/hubsdk/trancare/trancare/TranTrancareCallback;)V

    .line 53
    goto :goto_1

    .line 55
    .end local v1    # "info":Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    return-void
.end method
