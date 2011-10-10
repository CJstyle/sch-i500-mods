.class public Lcom/android/mms/ui/AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumberOfAttachments:I

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;

.field private final vcardListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
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
    .line 34
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 41
    new-instance v0, Lcom/android/mms/ui/AttachmentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/AttachmentListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->vcardListener:Landroid/view/View$OnKeyListener;

    .line 35
    iput p2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    .line 39
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 65
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    const v3, 0x7f080006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 69
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 71
    const v3, 0x7f080005

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 82
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    new-instance v3, Lcom/android/mms/ui/AttachmentListAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/AttachmentListAdapter$2;-><init>(Lcom/android/mms/ui/AttachmentListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 92
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 93
    const v3, 0x1080062

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    return-object p2
.end method

.method public isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 123
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v0, v1, :cond_2

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    .end local v0           #index:I
    :cond_0
    :goto_1
    return-void

    .line 123
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0           #index:I
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    .line 136
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public setSaveButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "bt"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
