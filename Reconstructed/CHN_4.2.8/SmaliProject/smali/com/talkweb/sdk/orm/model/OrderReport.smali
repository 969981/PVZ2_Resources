.class public Lcom/talkweb/sdk/orm/model/OrderReport;
.super Ljava/lang/Object;
.source "OrderReport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/talkweb/sdk/orm/model/OrderReport;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/talkweb/sdk/orm/model/OrderReport;->id:Ljava/lang/Integer;

    return-void
.end method
