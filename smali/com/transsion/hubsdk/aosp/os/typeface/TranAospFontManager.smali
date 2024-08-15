.class public Lcom/transsion/hubsdk/aosp/os/typeface/TranAospFontManager;
.super Ljava/lang/Object;
.source "TranAospFontManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindFontManagerService()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultTypeface(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultTypefaceFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1
    .param p1, "fontFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public unbindFontManagerService()V
    .locals 0

    .line 32
    return-void
.end method
