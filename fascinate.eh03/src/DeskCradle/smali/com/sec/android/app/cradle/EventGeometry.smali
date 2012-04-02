.class public Lcom/sec/android/app/cradle/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "EventGeometry"

    iput-object v0, p0, Lcom/sec/android/app/cradle/EventGeometry;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mCellMargin:I

    .line 33
    iput v1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMoreEventOffset:I

    return-void
.end method


# virtual methods
.method setHourGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mHourGap:F

    .line 41
    return-void
.end method

.method setMinEventHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/cradle/EventGeometry;->mMinEventHeight:F

    .line 45
    return-void
.end method
