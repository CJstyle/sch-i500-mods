.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsDeliveryInfo"
.end annotation


# instance fields
.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0
    .parameter "ticker"
    .parameter "timeMillis"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    .line 288
    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    .line 289
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isStatusMessage"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    .line 294
    return-void
.end method
