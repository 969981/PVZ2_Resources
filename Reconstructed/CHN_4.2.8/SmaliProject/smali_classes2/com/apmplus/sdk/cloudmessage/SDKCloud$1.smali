.class public final Lcom/apmplus/sdk/cloudmessage/SDKCloud$1;
.super Ljava/lang/Object;
.source "SDKCloud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apmplus/sdk/cloudmessage/SDKCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic fM:Lcom/apmplus/sdk/cloudmessage/SDKCloud;


# direct methods
.method constructor <init>(Lcom/apmplus/sdk/cloudmessage/SDKCloud;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud$1;->fM:Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/apmplus/sdk/cloudmessage/SDKCloud$1;->fM:Lcom/apmplus/sdk/cloudmessage/SDKCloud;

    invoke-virtual {v0}, Lcom/apmplus/sdk/cloudmessage/SDKCloud;->fetchCloud()V

    return-void
.end method
