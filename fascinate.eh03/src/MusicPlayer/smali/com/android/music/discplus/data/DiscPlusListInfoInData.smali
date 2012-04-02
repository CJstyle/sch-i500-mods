.class public Lcom/android/music/discplus/data/DiscPlusListInfoInData;
.super Ljava/lang/Object;
.source "DiscPlusListInfoInData.java"


# instance fields
.field public mArtistName:Ljava/lang/String;

.field public mFocusedIndex:Ljava/lang/String;

.field public mItemTitle:Ljava/lang/String;

.field public mResId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "focusedIndex"
    .parameter "itemTitle"
    .parameter "artistName"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mFocusedIndex:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    .line 10
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mFocusedIndex:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 13
    iput-wide p4, p0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    .line 14
    return-void
.end method
