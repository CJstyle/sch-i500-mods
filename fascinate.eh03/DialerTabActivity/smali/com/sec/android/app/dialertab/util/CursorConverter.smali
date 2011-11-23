.class public Lcom/sec/android/app/dialertab/util/CursorConverter;
.super Ljava/lang/Object;
.source "CursorConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/util/CursorConverter$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    goto :goto_0
.end method
