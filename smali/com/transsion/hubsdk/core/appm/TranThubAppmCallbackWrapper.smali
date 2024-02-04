.class public Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;
.super Ljava/lang/Object;
.source "TranThubAppmCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WRAPPER_CALLBACKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 5
    .param p0, "service"    # Lcom/transsion/hubsdk/appm/ITranAppmManager;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$1;)V

    .line 20
    .local v0, "info":Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->setTranAppmCallbackWrapper(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V

    .line 21
    new-instance v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$AppmCallback;-><init>()V

    .line 22
    .local v1, "tranAppmCallback":Lcom/transsion/hubsdk/appm/ITranAppmCallback;
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->setTranAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V

    .line 23
    sget-object v2, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :try_start_0
    invoke-interface {p0, v1}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->registerAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmManager;Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
    .locals 5
    .param p0, "service"    # Lcom/transsion/hubsdk/appm/ITranAppmManager;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;

    .line 34
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallbackWapper()Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;->getTranAppmCallback()Lcom/transsion/hubsdk/appm/ITranAppmCallback;

    move-result-object v0

    .line 37
    .local v0, "tranAppmCallback":Lcom/transsion/hubsdk/appm/ITranAppmCallback;
    :try_start_0
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/appm/ITranAppmManager;->unregisterAppmCallback(Lcom/transsion/hubsdk/appm/ITranAppmCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v2, Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper;->WRAPPER_CALLBACKS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    goto :goto_2

    .line 45
    .end local v0    # "tranAppmCallback":Lcom/transsion/hubsdk/appm/ITranAppmCallback;
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/core/appm/TranThubAppmCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 46
    :cond_1
    :goto_2
    return-void
.end method
