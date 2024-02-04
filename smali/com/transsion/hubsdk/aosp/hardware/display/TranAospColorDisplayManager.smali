.class public Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;
.super Ljava/lang/Object;
.source "TranAospColorDisplayManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


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

    .line 24
    const-class v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "android.hardware.display.ColorDisplayManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public isNightDisplayActivated()Z
    .locals 5

    .line 39
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 40
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 41
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 42
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    .line 44
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const-string v3, "isNightDisplayActivated"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "isNight":Z
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 50
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 52
    :cond_1
    return v2

    .line 53
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "isNight":Z
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 54
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNightDisplayActivated fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 6
    .param p1, "activated"    # Z

    .line 62
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 64
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 65
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    .line 67
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    sget-object v1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->sClassName:Ljava/lang/Class;

    const-string v3, "setNightDisplayActivated"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, "setNight":Z
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 73
    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    .line 75
    :cond_1
    return v3

    .line 76
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "setNight":Z
    :catchall_0
    move-exception v1

    .line 77
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNightDisplayActivated fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method
