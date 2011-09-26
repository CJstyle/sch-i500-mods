.class Lcom/android/mms/transaction/MessagingNotificationAlert$1;
.super Ljava/lang/Object;
.source "MessagingNotificationAlert.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotificationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotificationAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 163
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, strLanguage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$100(Lcom/android/mms/transaction/MessagingNotificationAlert;)V

    .line 172
    return-void

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotificationAlert$1;->this$0:Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotificationAlert;->access$000(Lcom/android/mms/transaction/MessagingNotificationAlert;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0
.end method
