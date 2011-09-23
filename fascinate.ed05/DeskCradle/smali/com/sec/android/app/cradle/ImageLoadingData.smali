.class public Lcom/sec/android/app/cradle/ImageLoadingData;
.super Ljava/lang/Object;
.source "ImageLoadingData.java"


# instance fields
.field mDataPath:Ljava/lang/String;

.field mTotIndex:I

.field mViewIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "dataPath"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/android/app/cradle/ImageLoadingData;->mDataPath:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    .line 18
    iput p3, p0, Lcom/sec/android/app/cradle/ImageLoadingData;->mViewIndex:I

    .line 19
    return-void
.end method
