.class Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CursorConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/util/CursorConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# instance fields
.field private mKeyList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;->mKeyList:[Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 24
    .local v1, keyCount:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;->mKeyList:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 27
    iget-object v2, p0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;->mKeyList:[Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0           #i:I
    .end local v1           #keyCount:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 4
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;->mKeyList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;->mKeyList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    new-instance v2, Landroid/content/Entity;

    invoke-direct {v2, v1}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    return-object v2
.end method
