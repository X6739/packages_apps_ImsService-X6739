.class public Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;
.super Ljava/lang/Object;
.source "TranThubUserHandleManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getIdentifier()I
    .locals 1

    .line 22
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method
