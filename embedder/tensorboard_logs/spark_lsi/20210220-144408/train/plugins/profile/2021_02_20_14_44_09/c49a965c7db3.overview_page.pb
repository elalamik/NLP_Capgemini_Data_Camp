?	?x?'9;@?x?'9;@!?x?'9;@	????????????????!????????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?x?'9;@]???i9@1Hqh??Ae8?πz??I????????Y??p?q???*	??????T@2U
Iterator::Model::ParallelMapV2??!????!??G?I<@)??!????1??G?I<@:Preprocessing2F
Iterator::ModelǺ?????!??7???J@)?[??b???1q?'_E?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??U?6œ?!?O??^&7@)aTR'????16GlP]3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatej???늉?!2?????-@)?d??7iz?1I???@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceޏ?/??x?!V??_?@)ޏ?/??x?1V??_?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?N@aã?!a"?z8$G@)??g\8r?1?1O?&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorPqx??i?!?D??pH@)Pqx??i?1?D??pH@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??!r?z??!?(?"g?1@)?,??;?c?1\???? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????????I??#ˍoX@Q?Ӥ^??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	]???i9@]???i9@!]???i9@      ??!       "	Hqh??Hqh??!Hqh??*      ??!       2	e8?πz??e8?πz??!e8?πz??:	????????????????!????????B      ??!       J	??p?q?????p?q???!??p?q???R      ??!       Z	??p?q?????p?q???!??p?q???b      ??!       JGPUY????????b q??#ˍoX@y?Ӥ^???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?M vˌ??!?M vˌ??";
sequential_32/dense_96/MatMulMatMul)????!U??/???0";
sequential_32/dense_97/MatMulMatMul??????!ʺ[?X???0";
sequential_32/dense_98/SoftmaxSoftmaxx?$?+V??!2n?????"I
+gradient_tape/sequential_32/dense_97/MatMulMatMul|??X???!J???I??0";
sequential_32/dense_98/MatMulMatMulڡl]e|??!h??I????0"I
-gradient_tape/sequential_32/dense_97/MatMul_1MatMul???E???!㶟??M??"I
-gradient_tape/sequential_32/dense_98/MatMul_1MatMul?d? 	n??!0ͨ4b???"I
+gradient_tape/sequential_32/dense_96/MatMulMatMuls +)bJ??!7;W???0"I
+gradient_tape/sequential_32/dense_98/MatMulMatMul??`?????!??!d?2??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q???Mp?M@y???t@??"?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?59.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 