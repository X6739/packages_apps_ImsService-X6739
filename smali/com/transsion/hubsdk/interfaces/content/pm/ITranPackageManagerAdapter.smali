.class public interface abstract Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;
.super Ljava/lang/Object;
.source "ITranPackageManagerAdapter.java"


# virtual methods
.method public abstract getAllHiddenApps()[Ljava/lang/String;
.end method

.method public abstract getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract setHomeActivity(Landroid/content/ComponentName;I)V
.end method
