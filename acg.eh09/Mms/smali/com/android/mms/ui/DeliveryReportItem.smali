.class public Lcom/android/mms/ui/DeliveryReportItem;
.super Ljava/lang/Object;
.source "DeliveryReportItem.java"


# instance fields
.field date_time:Ljava/lang/String;

.field recipient:Ljava/lang/String;

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "recipient"
    .parameter "status"
    .parameter "date"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/android/mms/ui/DeliveryReportItem;->date_time:Ljava/lang/String;

    .line 35
    return-void
.end method
