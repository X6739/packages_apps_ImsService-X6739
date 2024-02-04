.class public Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;
.super Ljava/lang/Object;
.source "TranFontManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    .line 35
    sget-object v0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubFontManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/typeface/TranAospFontManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/typeface/TranAospFontManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospFontManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public bindFontManagerService()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;->bindFontManagerService()Z

    move-result v0

    return v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    return-object v0
.end method

.method public setDefaultTypeface(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;->setDefaultTypeface(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setDefaultTypefaceFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1
    .param p1, "fontFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;->setDefaultTypefaceFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unbindFontManagerService()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/typeface/TranFontManager;->mService:Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;->unbindFontManagerService()V

    .line 78
    return-void
.end method
