.class final Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    .line 891
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 892
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 901
    .end local p0
    :goto_0
    return-void

    .line 897
    .restart local p0
    :pswitch_0
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 898
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method
