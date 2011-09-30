.class final Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewerActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASViewerActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    .line 148
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 149
    return-void
.end method


# virtual methods
.method public CMASViewerSetData(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const v10, 0x7f090227

    const-string v12, " = "

    const-string v11, " "

    const-string v9, "Mms/CMASViewerActivity"

    .line 195
    const-string v5, "Mms/CMASViewerActivity"

    const-string v5, "CMASViewerSetData"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewerActivity;->access$102(Lcom/android/mms/ui/CMASViewerActivity;J)J

    .line 198
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$202(Lcom/android/mms/ui/CMASViewerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewerActivity;->access$302(Lcom/android/mms/ui/CMASViewerActivity;J)J

    .line 200
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/16 v6, 0x17

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$402(Lcom/android/mms/ui/CMASViewerActivity;I)I

    .line 201
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/16 v6, 0x1f

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/CMASViewerActivity;->access$502(Lcom/android/mms/ui/CMASViewerActivity;J)J

    .line 202
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$602(Lcom/android/mms/ui/CMASViewerActivity;I)I

    .line 204
    const-string v5, "Mms/CMASViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMASViewerSetData msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$100(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgText "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$200(Lcom/android/mms/ui/CMASViewerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgServiceCategory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$400(Lcom/android/mms/ui/CMASViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgDate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$300(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgExpiry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$500(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$600(Lcom/android/mms/ui/CMASViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$700(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901db

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$800(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$200(Lcom/android/mms/ui/CMASViewerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$400(Lcom/android/mms/ui/CMASViewerActivity;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 237
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f090207

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 238
    const-string v5, "Mms/CMASViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$400(Lcom/android/mms/ui/CMASViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd, yyyy, h:mmaa"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 244
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$300(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    const-string v5, "Mms/CMASViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$300(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$1000(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v7}, Lcom/android/mms/ui/CMASViewerActivity;->access$500(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 252
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM dd, yyyy, h:mmaa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 253
    .local v4, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    .local v1, calendar1:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$500(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    const-string v5, "Mms/CMASViewerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CMASViewerActivity;->access$500(Lcom/android/mms/ui/CMASViewerActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/CMASViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$1100(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v1           #calendar1:Ljava/util/Calendar;
    .end local v4           #formatter1:Ljava/text/SimpleDateFormat;
    :goto_1
    return-void

    .line 215
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #expirty_time_text:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    :pswitch_0
    const-string v5, "Mms/CMASViewerActivity"

    const-string v5, "CMASViewerSetData(), Presidential CMAS = TRUE"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901e8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 221
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901e9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 225
    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901ea

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 229
    :pswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901eb

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 233
    :pswitch_4
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$900(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0901ec

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 267
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/CMASViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    const v7, 0x7f09020f

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/CMASViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2       #expirty_time_text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v5}, Lcom/android/mms/ui/CMASViewerActivity;->access$1100(Lcom/android/mms/ui/CMASViewerActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const-string v5, "Mms/CMASViewerActivity"

    const-string v5, "msgExpiry is null"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 276
    const-string v0, "Mms/CMASViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sparse-switch p1, :sswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 281
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewerActivity;->finish()V

    goto :goto_0

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "Mms/CMASViewerActivity"

    .line 153
    const-string v2, "Mms/CMASViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete with token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-nez p3, :cond_1

    .line 191
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 179
    .local v0, threadId:J
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASViewerActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v3, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v3}, Lcom/android/mms/ui/CMASViewerActivity;->access$000(Lcom/android/mms/ui/CMASViewerActivity;)Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    move v3, v6

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 163
    .end local v0           #threadId:J
    .restart local p2
    :sswitch_1
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 164
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "Mms/CMASViewerActivity"

    const-string v2, "onQueryComplete cursor moveToNext"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/CMASViewerActivity$BackgroundQueryHandler;->CMASViewerSetData(Landroid/database/Cursor;)V

    goto :goto_0

    .end local p2
    .restart local v0       #threadId:J
    :cond_2
    move v3, v5

    .line 181
    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_1
    .end sparse-switch
.end method
