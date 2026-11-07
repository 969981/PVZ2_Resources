.class public Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;
.super Ljava/lang/Object;
.source "LooperPrinterUtils.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/apm/common/utility/LooperPrinterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrinterWrapper"
.end annotation


# static fields
.field private static final END:C = '<'

.field private static final START:C = '>'


# instance fields
.field haveAdd:Z

.field haveRemove:Z

.field mAddPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field mPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field mRemovePrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mRemovePrinters:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveRemove:Z

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveAdd:Z

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 8

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sListener:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_4

    .line 49
    iget-boolean v5, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveAdd:Z

    if-eqz v5, :cond_4

    .line 50
    iget-object v5, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Printer;

    .line 51
    iget-object v7, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 52
    iget-object v7, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_3
    iget-object v5, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveAdd:Z

    .line 59
    :cond_4
    iget-object v5, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sget v6, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->mMaxCount:I

    if-le v5, v6, :cond_5

    const-string v5, "LooperPrinterUtils"

    const-string v6, "wrapper contains too many printer,please check if the useless printer have been removed"

    .line 60
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_5
    iget-object v5, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Printer;

    if-eqz v6, :cond_6

    .line 64
    invoke-interface {v6, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_9

    .line 69
    iget-boolean p1, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveRemove:Z

    if-eqz p1, :cond_9

    .line 70
    iget-object p1, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mRemovePrinters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Printer;

    .line 71
    iget-object v6, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v6, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_8
    iget-object p1, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mRemovePrinters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 75
    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveRemove:Z

    .line 78
    :cond_9
    sget-object p1, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sListener:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;

    if-eqz p1, :cond_a

    cmp-long p1, v3, v1

    if-lez p1, :cond_a

    .line 79
    sget-object p1, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sListener:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-interface {p1, v0, v1}, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;->onDuration(J)V

    :cond_a
    return-void
.end method
