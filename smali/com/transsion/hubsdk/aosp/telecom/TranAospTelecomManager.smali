.class public Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;
.super Ljava/lang/Object;
.source "TranAospTelecomManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/telecom/ITranTelecomManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstanceObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "android.telecom.TelecomManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public isRinging()Z
    .locals 5

    .line 44
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mInstanceObject:Ljava/lang/Object;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isRinging"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, "isRing":Z
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mInstanceObject:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 53
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 55
    :cond_1
    return v2

    .line 56
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "isRing":Z
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 57
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/telecom/TranAospTelecomManager;->mInstanceObject:Ljava/lang/Object;

    .line 69
    return-void
.end method
