?	?iP4?C@?iP4?C@!?iP4?C@	?\Ǉ=???\Ǉ=??!?\Ǉ=??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?iP4?C@??̓kjA@1?<i????A"?? >???I??`ũ?@Y?? ???*	?x?&1?u@2U
Iterator::Model::ParallelMapV2??Û5x??!?4??O?N@)??Û5x??1?4??O?N@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateyW=`2??!u??*Sd3@)??6????1H?Βz?0@:Preprocessing2F
Iterator::Model?߃?.m??!6????'Q@)u?ɧ??1S?w0?@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?W???T??!?1??Lp@)д??h???1?P???n@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???v?
??!Iy?`?6@)??,?ņ?1?d?y?	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?]?)ʥ??!i????@)?]?)ʥ??1i????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???sһ?!%??h`?@)cz?({?1J??????:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????q?!??/???)?????q?1??/???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?10.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?\Ǉ=??I?~M??qX@Qhy?J??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??̓kjA@??̓kjA@!??̓kjA@      ??!       "	?<i?????<i????!?<i????*      ??!       2	"?? >???"?? >???!"?? >???:	??`ũ?@??`ũ?@!??`ũ?@B      ??!       J	?? ????? ???!?? ???R      ??!       Z	?? ????? ???!?? ???b      ??!       JGPUY?\Ǉ=??b q?~M??qX@yhy?J???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits8?JA?*??!8?JA?*??"=
sequential_253/dense_759/MatMulMatMul?????q??!j??Y7???0"=
 sequential_253/dense_761/SoftmaxSoftmaxo8f7ݕ?!???F?t??"=
sequential_253/dense_760/MatMulMatMul????zǕ?!?y???-??0"K
-gradient_tape/sequential_253/dense_760/MatMulMatMul?-?d?Β?!???̣???0"=
sequential_253/dense_761/MatMulMatMulm??U?ڐ?!}???}Q??0"K
-gradient_tape/sequential_253/dense_759/MatMulMatMulw?\uM??!??q1UV??0"K
/gradient_tape/sequential_253/dense_760/MatMul_1MatMul?Uj???!????W??"K
/gradient_tape/sequential_253/dense_761/MatMul_1MatMulxQ??d???!???4*D??"a
Dgradient_tape/sequential_253/batch_normalization_125/moments/truedivRealDiv?vgaJ ??!>ђ?,??Q      Y@Y??(??(.@a?뺮?:U@q??qͨ%L@y????+???"?
both?Your program is POTENTIALLY input-bound because 87.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?10.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?56.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 