?	?Bus??@@?Bus??@@!?Bus??@@	?j2$???j2$??!?j2$??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?Bus??@@I???|?>@1?????A??Y,??I?5?;N???Y'?ei????*	u?V?Z@2U
Iterator::Model::ParallelMapV2@?@?w???!Ug?~X@@)@?@?w???1Ug?~X@@:Preprocessing2F
Iterator::Model?????I??!?޻???K@)???????12??z6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????j??!???<6@)H?I?OǓ?1s?E@?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?rk?m???!ַ???)@)?y??Q}?1??L??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{?\?&?{?!?׼?%G@){?\?&?{?1?׼?%G@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip4??<???!c!DjF@)??u??y?1?>U???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?(#. ?r?!.V ?=?@)?(#. ?r?1.V ?=?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???eO??!'0%?"?0@)YO???*p?1ۡ?y?r@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?j2$??IfemM?@X@Q???:????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	I???|?>@I???|?>@!I???|?>@      ??!       "	??????????!?????*      ??!       2	??Y,????Y,??!??Y,??:	?5?;N????5?;N???!?5?;N???B      ??!       J	'?ei????'?ei????!'?ei????R      ??!       Z	'?ei????'?ei????!'?ei????b      ??!       JGPUY?j2$??b qfemM?@X@y???:?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??????!??????"-
IteratorGetNext/_1_Send??-"????!?~C?f~??"=
sequential_235/dense_705/MatMulMatMul??????!b;C?~??0"K
-gradient_tape/sequential_235/dense_705/MatMulMatMul???1???!?s?[in??0"=
 sequential_235/dense_707/SoftmaxSoftmaxx???3???!?^??lZ??"=
sequential_235/dense_706/MatMulMatMul??B*????!g?W?(??0"K
-gradient_tape/sequential_235/dense_706/MatMulMatMul8???o3??!*??????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?d????!?	?h7??"=
sequential_235/dense_707/MatMulMatMulN?F{??!	?6????0"K
/gradient_tape/sequential_235/dense_707/MatMul_1MatMulx? ?ە?!??B?????Q      Y@Y[ZZZZZ6@ajiiiiiS@qB;)??X?@y0?pl???"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?31.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 