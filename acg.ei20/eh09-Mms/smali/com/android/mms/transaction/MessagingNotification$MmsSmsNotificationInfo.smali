.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsNotificationInfo"
.end annotation


# instance fields
.field public mClickIntent:Landroid/content/Intent;

.field public mCount:I

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V
    .locals 0
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconResourceId"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 310
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    .line 311
    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    .line 312
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 313
    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    .line 314
    iput-object p7, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    .line 315
    iput p8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 316
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZII)V
    .locals 11
    .parameter "context"
    .parameter "isNew"
    .parameter "count"
    .parameter "uniqueThreads"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    move-object v5, v0

    :goto_0
    iget-wide v6, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/transaction/MessagingNotification;->access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    .line 323
    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
