.class public Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;
.super Ljava/lang/Object;
.source "TranDoorMan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/reflect/TranDoorMan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ADDITIONAL_FIELDS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final mLockMock:Ljava/lang/Object;

.field protected final mMockField:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "TT;TM;>;"
        }
    .end annotation
.end field

.field protected final mRealField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->ADDITIONAL_FIELDS:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mRealField:Ljava/lang/reflect/Field;

    .line 250
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mLockMock:Ljava/lang/Object;

    .line 251
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    :goto_1
    iput-object v1, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mMockField:Ljava/util/WeakHashMap;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " by mock  lock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 255
    :cond_2
    const-string v0, " by source-modified."

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "os.FrameworkDoorMan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/String;)Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<",
            "TT;TM;>;"
        }
    .end annotation

    .line 261
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->ADDITIONAL_FIELDS:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 266
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;

    .line 267
    .local v2, "res":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    if-nez v2, :cond_1

    .line 268
    new-instance v3, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;

    invoke-direct {v3, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v2, v3

    .line 269
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    monitor-exit v1

    return-object v2

    .line 272
    .end local v2    # "res":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 262
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mRealField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->getMock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TM;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mLockMock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 300
    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mMockField:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mMockField:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TM;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "member":Ljava/lang/Object;, "TM;"
    if-nez p1, :cond_0

    .line 288
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mRealField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->setMock(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setMock(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TM;)Z"
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;, "Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField<TT;TM;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "member":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mLockMock:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 310
    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mMockField:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v0

    return v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/transsion/hubsdk/common/reflect/TranDoorMan$AdditionalField;->mMockField:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method
