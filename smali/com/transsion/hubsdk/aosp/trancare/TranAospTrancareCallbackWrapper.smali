.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;
.super Ljava/lang/Object;
.source "TranAospTrancareCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    }
.end annotation


# static fields
.field private static final ATHENA_CLASS_NAME:Ljava/lang/String; = "transsion.log.Athena"

.field private static final mWrapperCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;",
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

    sput-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static regCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 9
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;-><init>(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;)V

    .line 28
    .local v0, "info":Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->setTranTrancareCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    .line 30
    new-instance v2, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;

    invoke-direct {v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$1;-><init>()V

    .line 44
    .local v2, "tranLogCallback":Lcom/transsion/log/TranLogCallback;
    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->setTranLogCallback(Lcom/transsion/log/TranLogCallback;)V

    .line 46
    sget-object v3, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :try_start_0
    const-string v3, "transsion.log.Athena"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "sAthenaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "regTranLogCallback"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/transsion/log/TranLogCallback;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 51
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .end local v3    # "sAthenaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 54
    :goto_0
    return-void
.end method

.method public static unRegCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .locals 7
    .param p0, "callback"    # Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;

    .line 58
    .local v1, "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranTrancareCallback()Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    const-string v0, "transsion.log.Athena"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "sAthenaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "unregTranLogCallback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/transsion/log/TranLogCallback;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;->getTranLogCallback()Lcom/transsion/log/TranLogCallback;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    nop

    .end local v0    # "sAthenaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :goto_1
    sget-object v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper;->mWrapperCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    goto :goto_2

    .line 68
    .end local v1    # "callbackInfo":Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareCallbackWrapper$CallbackInfo;
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    :goto_2
    return-void
.end method
