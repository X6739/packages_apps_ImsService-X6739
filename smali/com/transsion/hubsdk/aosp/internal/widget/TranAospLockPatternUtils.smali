.class public Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;
.super Ljava/lang/Object;
.source "TranAospLockPatternUtils.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranTranLockPatternUtilsAdapter;


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

    .line 32
    const-class v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .locals 6
    .param p1, "userId"    # I

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 48
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 49
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 51
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getActivePasswordQuality"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "quality":I
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 57
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    .line 59
    :cond_1
    return v3

    .line 60
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "quality":I
    :catchall_0
    move-exception v1

    .line 61
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivePasswordQuality fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method public isSecure(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 69
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 70
    sget-object v1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 71
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 72
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 74
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isSecure"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v1, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 76
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "isSecure":Z
    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 80
    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    .line 82
    :cond_1
    return v3

    .line 83
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "isSecure":Z
    :catchall_0
    move-exception v1

    .line 84
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecure fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method

.method protected setClassObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternUtils;->mInstanceObject:Ljava/lang/Object;

    .line 96
    return-void
.end method
