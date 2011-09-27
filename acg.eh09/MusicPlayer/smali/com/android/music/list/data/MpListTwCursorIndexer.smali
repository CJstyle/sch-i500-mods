.class public Lcom/android/music/list/data/MpListTwCursorIndexer;
.super Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
.source "MpListTwCursorIndexer.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "indexCharacters"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "word"
    .parameter "indexString"

    .prologue
    .line 28
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "data"
    .parameter "key"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
