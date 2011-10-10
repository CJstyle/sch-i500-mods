.class final Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CMASMoreInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CMASMoreInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASMoreInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/CMASMoreInfoActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoActivity;

    .line 118
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 123
    const-string v0, "Mms/CMASMoreInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez p3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    const/4 v0, -0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/CMASMoreInfoActivity;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/CMASMoreInfoActivity;->CMASMoreInfoSetData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
