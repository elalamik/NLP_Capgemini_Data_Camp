?	??,z?A@??,z?A@!??,z?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??,z?A@??\QJ?@@1??ME*???AϿ]??N??I????n???*	-????_@2U
Iterator::Model::ParallelMapV2h\W???!(͑0?7@)h\W???1(͑0?7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?uT5Aԝ?!ȅ ??6@)???????1Lϰb(3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?O??0{??![?N)?:@)!???Ƙ?1??????2@:Preprocessing2F
Iterator::Model????=??!1??|cD@)?(?r??1;2Pg?q0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)狽_??!^??z?<@))狽_??1^??z?<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???<?|??!?]q???M@),I???p??1_vH??5@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap Tq????!>?U?>@))!XU/?s?1W|}?G@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??֪]s?!??z??@)??֪]s?1??z??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??$s??X@Q???6???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??\QJ?@@??\QJ?@@!??\QJ?@@      ??!       "	??ME*?????ME*???!??ME*???*      ??!       2	Ͽ]??N??Ͽ]??N??!Ͽ]??N??:	????n???????n???!????n???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??$s??X@y???6????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits43???i??!43???i??"-
IteratorGetNext/_2_Recv????ş??!?1*??h??"=
sequential_283/dense_849/MatMulMatMul(8\??ŧ?!??:ya??0"=
 sequential_283/dense_851/SoftmaxSoftmax?.X<5??!?;?m?T??"K
-gradient_tape/sequential_283/dense_849/MatMulMatMulƤV? ??!??PV?$??0"=
sequential_283/dense_850/MatMulMatMul?Ry?
??!)???s???0"K
/gradient_tape/sequential_283/dense_850/MatMul_1MatMul??ŏ????!&??p??"K
-gradient_tape/sequential_283/dense_850/MatMulMatMul祑?|???!?2??E???0"K
/gradient_tape/sequential_283/dense_851/MatMul_1MatMul?,#	???!??g?o??"=
sequential_283/dense_851/MatMulMatMul?E?ڽ??!w@uE????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?/{?I@y???Τ???"?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 