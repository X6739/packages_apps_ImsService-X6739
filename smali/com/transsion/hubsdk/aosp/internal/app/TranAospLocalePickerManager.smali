.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;
.super Ljava/lang/Object;
.source "TranAospLocalePickerManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;


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

.field private static sLocalInfoClassName:Ljava/lang/Class;
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

    .line 25
    const-class v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "com.android.internal.internal.app.LocalePicker"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;->sClassName:Ljava/lang/Class;

    .line 27
    const-string v0, "com.android.internal.internal.app.LocalePicker$LocaleInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;->sLocalInfoClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .locals 1
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "tranLocaleArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;>;"
    return-object v0
.end method
