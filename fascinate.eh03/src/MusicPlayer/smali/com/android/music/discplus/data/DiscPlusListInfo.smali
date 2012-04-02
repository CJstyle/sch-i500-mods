.class public Lcom/android/music/discplus/data/DiscPlusListInfo;
.super Ljava/lang/Object;
.source "DiscPlusListInfo.java"


# instance fields
.field public mCursorEndPosition:I

.field public mCursorStartPosition:I

.field public mDrawEndDegree:F

.field public mDrawPosition:I

.field public mDrawStartDegree:F

.field public mEndDegree:F

.field public mFocusedIndex:Ljava/lang/String;

.field public mStartDegree:F


# direct methods
.method public constructor <init>(IILjava/lang/String;FF)V
    .locals 3
    .parameter "cursorStartPosition"
    .parameter "cursorEndPosition"
    .parameter "focusedIndex"
    .parameter "startDegree"
    .parameter "endDegree"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v2, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorStartPosition:I

    .line 5
    iput v2, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorEndPosition:I

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    .line 7
    iput v1, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    .line 8
    iput v1, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 9
    iput v2, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    .line 10
    iput v1, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    .line 11
    iput v1, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    .line 15
    iput p1, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorStartPosition:I

    .line 16
    iput p2, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mCursorEndPosition:I

    .line 17
    iput-object p3, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mFocusedIndex:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    .line 19
    iput p5, p0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 20
    return-void
.end method
