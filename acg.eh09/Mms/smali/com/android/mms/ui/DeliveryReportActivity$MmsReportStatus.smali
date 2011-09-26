.class final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryStatus:I

.field final readStatus:I

.field final reportDate:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .parameter "drStatus"
    .parameter "rrStatus"
    .parameter "report_date"

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    .line 422
    iput p2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    .line 423
    iput-wide p3, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->reportDate:J

    .line 424
    return-void
.end method


# virtual methods
.method public getReportDate()J
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->reportDate:J

    return-wide v0
.end method
