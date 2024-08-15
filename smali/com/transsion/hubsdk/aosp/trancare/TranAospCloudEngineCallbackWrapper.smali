.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;
.super Ljava/lang/Object;
.source "TranAospCloudEngineCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;,
        Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;
    }
.end annotation


# static fields
.field private static final CLOUD_ENGINE_NAME:Ljava/lang/String; = "com.transsion.log.cloudengine.CloudEngine"

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static regCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$1;)V

    .line 27
    .local v0, "info":Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->setTranCloudEngineCallback(Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    .line 28
    new-instance v2, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;

    invoke-direct {v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CloudEngineCallback;-><init>()V

    .line 29
    .local v2, "cloudEngineCallback":Lcom/transsion/log/cloudengine/ICloudEngineCallback;
    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->setCloudEngineCallback(Lcom/transsion/log/cloudengine/ICloudEngineCallback;)V

    .line 30
    sget-object v3, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :try_start_0
    const-string v3, "com.transsion.log.cloudengine.CloudEngine"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 34
    .local v3, "cloudEngine":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "regCloudEngineCallback"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 36
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    aput-object p1, v5, v9

    aput-object v2, v5, v10

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    nop

    .end local v3    # "cloudEngine":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 39
    :goto_0
    return-void
.end method

.method public static unRegCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    .line 42
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;

    .line 43
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getTranCloudEngineCallback()Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    :try_start_0
    const-string v0, "com.transsion.log.cloudengine.CloudEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "cloudEngine":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "unregCloudEngineCallback"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 48
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;->getCloudEngineCallback()Lcom/transsion/log/cloudengine/ICloudEngineCallback;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .end local v0    # "cloudEngine":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 51
    :goto_1
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    goto :goto_2

    .line 54
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospCloudEngineCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    :goto_2
    return-void
.end method
