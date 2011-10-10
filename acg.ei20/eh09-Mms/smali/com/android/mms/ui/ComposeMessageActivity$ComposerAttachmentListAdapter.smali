.class Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerAttachmentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5479
    .local p4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5480
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5481
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->mResource:I

    .line 5482
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5483
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 5489
    if-nez p2, :cond_0

    .line 5490
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->mResource:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5493
    :cond_0
    const v6, 0x7f080030

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5494
    .local v1, attachmentName:Landroid/widget/TextView;
    const v6, 0x7f080031

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5495
    .local v3, removeImage:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 5496
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    move v4, p1

    .line 5498
    .local v4, selectPosition:I
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 5519
    .local v2, fileName:Ljava/lang/String;
    const v5, 0x7f020081

    .line 5522
    .local v5, typeImage:I
    invoke-virtual {v1, v5, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5523
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5524
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5525
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 5527
    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5533
    return-object p2
.end method
