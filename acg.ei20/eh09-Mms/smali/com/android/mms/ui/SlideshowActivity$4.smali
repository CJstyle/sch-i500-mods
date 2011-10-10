.class Lcom/android/mms/ui/SlideshowActivity$4;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$showModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$4;->val$model:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v6, "Mms/SlideshowActivity"

    .line 417
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/SlideshowActivity;->access$502(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 419
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$4;->isRotating()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 424
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 429
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$4;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/SlideshowActivity;->access$802(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v2           #ostream:Ljava/io/ByteArrayOutputStream;
    .local v3, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 437
    const-string v4, "Mms/SlideshowActivity"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    if-eqz v3, :cond_1

    .line 441
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v4

    const-string v5, "par"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 450
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$4;->isRotating()Z

    move-result v4

    if-nez v4, :cond_3

    .line 456
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/events/EventTarget;

    const-string v5, "SimlDocumentEnd"

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-interface {v4, v5, v6, v7}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 459
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v5}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    .line 462
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$4;->isRotating()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 463
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 481
    :goto_1
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Mms/SlideshowActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 439
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 441
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 444
    :cond_4
    :goto_3
    throw v4

    .line 442
    :catch_1
    move-exception v0

    .line 443
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/SlideshowActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 466
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    :cond_5
    const/4 v1, 0x0

    .line 467
    .local v1, firstPageDuration:I
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    .line 468
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v4, v4, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v4, v4, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 469
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v4, v4, Lcom/android/mms/ui/SlideshowActivity;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    .line 470
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_6

    if-lez v1, :cond_6

    .line 471
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v5}, Lcom/android/mms/ui/SlideshowActivity;->access$900(Lcom/android/mms/ui/SlideshowActivity;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 473
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 474
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_1

    .line 477
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 478
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v4}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto :goto_1

    .line 439
    .end local v1           #firstPageDuration:I
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ostream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method
