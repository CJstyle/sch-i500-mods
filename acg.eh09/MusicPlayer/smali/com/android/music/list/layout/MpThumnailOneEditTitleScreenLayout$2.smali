.class Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;
.super Ljava/lang/Object;
.source "MpThumnailOneEditTitleScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Camera()V
    .locals 6

    .prologue
    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v3}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 356
    .local v2, vk:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v3}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 358
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "return-uri"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    iget-object v3, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v3}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpListActivity;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/music/list/activity/MpListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #vk:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 366
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 367
    const-string v3, "CreatePlayList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick Error 1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Delete()V
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, defaultimage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$200(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$302(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 378
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$402(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;Z)Z

    .line 379
    return-void
.end method

.method public MyFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 338
    iget-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v2}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 339
    .local v1, vk:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v2}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v2}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {p0, v0, v4}, Lcom/android/music/list/activity/MpListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0a00c4

    const v10, 0x7f0a00c2

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 383
    const/4 v4, 0x0

    .line 384
    .local v4, item_photo:I
    const/4 v3, 0x1

    .line 385
    .local v3, item_image:I
    const/4 v2, 0x2

    .line 389
    .local v2, item_delete:I
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$400(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 391
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 392
    .local v5, items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 393
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 394
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0038

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 403
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a00c5

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 405
    new-instance v6, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;

    invoke-direct {v6, p0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;-><init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 420
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 422
    return-void

    .line 398
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_0
    new-array v5, v9, [Ljava/lang/CharSequence;

    .line 399
    .restart local v5       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 400
    iget-object v6, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v6}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    goto :goto_0
.end method
