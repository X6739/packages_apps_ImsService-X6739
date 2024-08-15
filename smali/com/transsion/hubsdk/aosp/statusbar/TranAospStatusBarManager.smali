.class public Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;
.super Ljava/lang/Object;
.source "TranAospStatusBarManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;


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

    .line 29
    const-class v0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "android.app.StatusBarManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public disable(I)V
    .locals 6
    .param p1, "what"    # I

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mInstanceObject:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->sClassName:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mContext:Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mInstanceObject:Ljava/lang/Object;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mInstanceObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "disable"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->mInstanceObject:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
