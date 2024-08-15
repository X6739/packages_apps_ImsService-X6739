.class public Lcom/transsion/hubsdk/common/track/TranAthena;
.super Ljava/lang/Object;
.source "TranAthena.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/transsion/hubsdk/common/track/TranAthena;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsUserExperienceOn:Z

.field private final mUserExperienceObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/transsion/hubsdk/common/track/TranAthena;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/common/track/TranAthena;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mIsUserExperienceOn:Z

    .line 44
    new-instance v0, Lcom/transsion/hubsdk/common/track/TranAthena$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/transsion/hubsdk/common/track/TranAthena$1;-><init>(Lcom/transsion/hubsdk/common/track/TranAthena;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mUserExperienceObserver:Landroid/database/ContentObserver;

    .line 34
    iput-object p1, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 36
    const-string v2, "user_experience"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 35
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 38
    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/common/track/TranAthena;)Z
    .locals 1
    .param p0, "x0"    # Lcom/transsion/hubsdk/common/track/TranAthena;

    .line 15
    iget-boolean v0, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mIsUserExperienceOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/transsion/hubsdk/common/track/TranAthena;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/transsion/hubsdk/common/track/TranAthena;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mIsUserExperienceOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/common/track/TranAthena;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/transsion/hubsdk/common/track/TranAthena;

    .line 15
    iget-object v0, p0, Lcom/transsion/hubsdk/common/track/TranAthena;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/transsion/hubsdk/common/track/TranAthena;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transsion/hubsdk/common/track/TranAthena;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/common/track/TranAthena;->mInstance:Lcom/transsion/hubsdk/common/track/TranAthena;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/common/track/TranAthena;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/common/track/TranAthena;->mInstance:Lcom/transsion/hubsdk/common/track/TranAthena;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/transsion/hubsdk/common/track/TranAthena;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/common/track/TranAthena;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/hubsdk/common/track/TranAthena;->mInstance:Lcom/transsion/hubsdk/common/track/TranAthena;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/hubsdk/common/track/TranAthena;->mInstance:Lcom/transsion/hubsdk/common/track/TranAthena;

    return-object v0
.end method
