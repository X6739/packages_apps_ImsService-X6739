.class public Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;
.super Ljava/lang/Object;
.source "TranLocalePickerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mService:Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospLocalePickerManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mService:Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospLocalePickerManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .locals 7
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocalePickerManager;->mService:Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "allLocaleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "tranLocaleArr":Ljava/util/List;, "Ljava/util/List<Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;

    .line 49
    .local v3, "localeInfo":Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;
    new-instance v4, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;

    invoke-virtual {v3}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50
    .local v4, "tranLocaleInfo":Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "localeInfo":Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;
    .end local v4    # "tranLocaleInfo":Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;
    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method
