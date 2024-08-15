.class public Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;
.super Ljava/lang/Object;
.source "TranThubLocalePickerManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "locale_picker"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 32
    .local v0, "serviceIBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranThubLocalePickerManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    .line 34
    return-void
.end method


# virtual methods
.method public getAllAssetLocales(Z)Ljava/util/List;
    .locals 5
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "tranLocaleArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/transsion/hubsdk/internal/app/TranLocaleInfo;>;"
    sget-object v1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    if-nez v1, :cond_0

    .line 40
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;->getAllAssetLocales(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllAssetLocales fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    .line 56
    sput-object p1, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->mService:Lcom/transsion/hubsdk/internal/app/ITranLocalePicker;

    .line 57
    return-void
.end method
