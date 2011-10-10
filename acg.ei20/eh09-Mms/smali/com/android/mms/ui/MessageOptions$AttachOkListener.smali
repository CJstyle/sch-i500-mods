.class Lcom/android/mms/ui/MessageOptions$AttachOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachOkListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mContext:Landroid/content/Context;

    .line 1154
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    .line 1155
    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mMsgId:J

    .line 1156
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x0

    .line 1161
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 1162
    .local v4, lv:Landroid/widget/ListView;
    if-nez v4, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/AttachmentListAdapter;

    .line 1168
    .local v3, la:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v5, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int v2, v7, v8

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 1170
    invoke-virtual {v3, v2, v9, v9}, Lcom/android/mms/ui/AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1171
    .local v6, rowItem:Landroid/view/View;
    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1172
    .local v1, cb:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1173
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1174
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v7, :cond_2

    .line 1176
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1184
    .end local v1           #cb:Landroid/widget/CheckBox;
    .end local v6           #rowItem:Landroid/view/View;
    :cond_3
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v7, :cond_0

    .line 1185
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1186
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-wide v8, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mMsgId:J

    invoke-static {v7, v5, v8, v9}, Lcom/android/mms/ui/MessageOptions;->access$200(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V

    goto :goto_0

    .line 1188
    :cond_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f09018c

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0901d7

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090146

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
