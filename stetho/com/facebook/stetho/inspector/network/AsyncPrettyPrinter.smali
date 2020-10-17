.class public interface abstract Lcom/facebook/stetho/inspector/network/AsyncPrettyPrinter;
.super Ljava/lang/Object;
.source "AsyncPrettyPrinter.java"


# virtual methods
.method public abstract getPrettifiedType()Lcom/facebook/stetho/inspector/network/PrettyPrinterDisplayType;
.end method

.method public abstract printTo(Ljava/io/PrintWriter;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
