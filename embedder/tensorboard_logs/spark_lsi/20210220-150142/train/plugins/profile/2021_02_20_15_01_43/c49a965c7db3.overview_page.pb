?	???[?@@???[?@@!???[?@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-???[?@@?!7???@1p$?`Sg??AEg?E(???ImXSY???*	???S?k@2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??A?"L??!=2{??P@)????Fu??1%???L@:Preprocessing2U
Iterator::Model::ParallelMapV2??/??!?????+@)??/??1?????+@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat	Q????!COzt??"@)'L?????1A?p~Zf@:Preprocessing2F
Iterator::Model?:u??<??!???N4@)?8?Վ???1A???>@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateO=?ඖ?!XE???#@)?#EdXŋ?1???OE@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5z5@i???!ȃ?_Y?@)5z5@i???1ȃ?_Y?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipɑ??????!@?=C?S@)??{?qy?1<???<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorEׅ?Om?!??????)Eׅ?Om?1??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIJh?Sc?X@Qn?e+???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?!7???@?!7???@!?!7???@      ??!       "	p$?`Sg??p$?`Sg??!p$?`Sg??*      ??!       2	Eg?E(???Eg?E(???!Eg?E(???:	mXSY???mXSY???!mXSY???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qJh?Sc?X@yn?e+????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsX	?׉???!X	?׉???"<
sequential_88/dense_266/SoftmaxSoftmax?o5s՟?![?v>8???"<
sequential_88/dense_264/MatMulMatMul??nh???!oK+??M??0"<
sequential_88/dense_265/MatMulMatMul???a`??!؆G?/??0"J
.gradient_tape/sequential_88/dense_265/MatMul_1MatMul?Lϳ?֙?!?{?????"<
sequential_88/dense_266/MatMulMatMul9?a?????!?????\??0"-
IteratorGetNext/_2_Recv? ̌V??!y?J?????"J
,gradient_tape/sequential_88/dense_265/MatMulMatMul
?ʌ????!jN??Z??0"J
,gradient_tape/sequential_88/dense_264/MatMulMatMul?UO%LB??!?Cl{???0"J
.gradient_tape/sequential_88/dense_266/MatMul_1MatMul?r9c??!?c?]???Q      Y@Y[ZZZZZ6@ajiiiiiS@q?[C?/?H@y??x:??"?
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
Refer to the TF2 Profiler FAQb?49.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 