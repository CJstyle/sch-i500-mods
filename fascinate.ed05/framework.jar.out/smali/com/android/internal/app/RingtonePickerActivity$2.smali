.class Lcom/android/internal/app/RingtonePickerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    if-nez p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$300(Lcom/android/internal/app/RingtonePickerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const-string v1, "SD Card UnMounted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$302(Lcom/android/internal/app/RingtonePickerActivity;Z)Z

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    goto :goto_0
.end method
