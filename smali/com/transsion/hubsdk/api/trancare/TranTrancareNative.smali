.class public final Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;
.super Ljava/lang/Object;
.source "TranTrancareNative.java"


# static fields
.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TRANLOG_OP_ADD:I = 0x2

.field public static final TRANLOG_OP_DIV:I = 0x5

.field public static final TRANLOG_OP_MUL:I = 0x4

.field public static final TRANLOG_OP_NONE:I = 0x1

.field public static final TRANLOG_OP_SUB:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cleanService()V
    .locals 1

    .line 125
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    .line 126
    return-void
.end method

.method public static getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    .locals 1

    .line 120
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    return-object v0
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 41
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 57
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static localLogKeep(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 80
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLogKeep(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static localRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 68
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setNvFloat(Ljava/lang/String;FI)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "op"    # I

    .line 103
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 104
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvFloat(Ljava/lang/String;FI)V

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setNvInt(Ljava/lang/String;II)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "op"    # I

    .line 87
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 88
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvInt(Ljava/lang/String;II)V

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setNvLong(Ljava/lang/String;JI)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J
    .param p3, "op"    # I

    .line 95
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 96
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvLong(Ljava/lang/String;JI)V

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setNvString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    .line 112
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
